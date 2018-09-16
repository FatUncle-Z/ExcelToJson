#include "exceltojson.h"
#include <QString>
#include <QJsonObject>
#include <QJsonArray>
#include <QJsonDocument>

#include <iostream>

#include <QtXlsxWriter/src/xlsx/xlsxdocument.h>
#include <QtXlsxWriter/src/xlsx/xlsxworkbook.h>
#include <QtXlsxWriter/src/xlsx/xlsxworksheet.h>

#include <rapidjson/document.h>
#include <rapidjson/writer.h>
#include <rapidjson/stringbuffer.h>

ExcelToJson::ExcelToJson()
{

}

void ExcelToJson::loadExcelFile(QString filePath)
{
   loadExcelFileByRapidJson(filePath);
}

void ExcelToJson::loadExcelFileByRapidJson(QString filePath)
{
    QXlsx::Document xlsx(filePath);
    QXlsx::Workbook *workBook = xlsx.workbook();
    QXlsx::Worksheet *workSheet = static_cast<QXlsx::Worksheet*>(workBook->sheet(0));

    rapidjson::Document document;
    document.SetObject();


    //read date
    QXlsx::Cell *cell = workSheet->cellAt(1, 1);
    std::string name = cell->value().toString().trimmed().toStdString();
    cell = workSheet->cellAt(2, 1);
    std::string value = cell->value().toString().trimmed().toStdString();
    rapidjson::Value keyValue, valueValue;
    keyValue.SetString(name.c_str(), name.length(), document.GetAllocator());
    valueValue.SetString(value.c_str(), value.length(), document.GetAllocator());

    document.AddMember(keyValue, valueValue, document.GetAllocator());

    cell = workSheet->cellAt(1, 2);
    name = cell->value().toString().trimmed().toStdString();
    cell = workSheet->cellAt(2, 2);
    value = cell->value().toString().trimmed().toStdString();
    keyValue.SetString(name.c_str(), name.length(), document.GetAllocator());
    valueValue.SetString(value.c_str(), value.length(), document.GetAllocator());
    document.AddMember(keyValue, valueValue, document.GetAllocator());
    //read contect
    //json array
    rapidjson::Value iapJsonKey, percentJsonKey, openJsonKey;

    cell = workSheet->cellAt(4, 1);
    std::string iapKey = cell->value().toString().trimmed().toStdString();


    cell = workSheet->cellAt(4, 2);
    std::string percentKey = cell->value().toString().trimmed().toStdString();


    cell = workSheet->cellAt(4, 3);
    std::string openKey = cell->value().toString().trimmed().toStdString();


    rapidjson::Value array_objects(rapidjson::kArrayType);
    QString itemValue;
    for (int i = 5; i <= workSheet->dimension().rowCount(); i++){

            cell = workSheet->cellAt(i, 1);
            itemValue = cell->value().toString();
            itemValue = itemValue.trimmed();
            if (itemValue.isEmpty() || itemValue.isNull()){
                continue;
            }
            rapidjson::Value object(rapidjson::kObjectType);
            const char* itemData = itemValue.toStdString().data();
            std::string iapStr = itemValue.toStdString();
            rapidjson::Value iapData;
            iapData.SetString(iapStr.c_str(), iapStr.length(), document.GetAllocator());
            iapJsonKey.SetString(iapKey.c_str(), iapKey.length(), document.GetAllocator());
            object.AddMember(iapJsonKey, iapData, document.GetAllocator());

            cell = workSheet->cellAt(i, 2);
            itemValue = cell->value().toString();
            itemValue = itemValue.trimmed();
            if (itemValue.isEmpty() == false && itemValue.isNull() == false){
                int number = itemValue.toInt();
                if (number > 0){
                    rapidjson::Value nobject(rapidjson::kNumberType);
                    nobject.SetInt(number);
                    percentJsonKey.SetString(percentKey.c_str(), percentKey.length(), document.GetAllocator());
                    object.AddMember(percentJsonKey, nobject, document.GetAllocator());
                }
            }
            cell = workSheet->cellAt(i, 3);
            itemValue = cell->value().toString();
            itemValue = itemValue.trimmed();
            if (itemValue.isEmpty() == false && itemValue.isNull() == false){
                itemValue = itemValue.toLower();
                bool bOpen = itemValue.compare("on") == 0 || itemValue.compare("true") == 0;
                openJsonKey.SetString(openKey.c_str(), openKey.length(), document.GetAllocator());
                object.AddMember(openJsonKey, bOpen, document.GetAllocator());
                if (bOpen == false){
                    continue;
                }
            }
            array_objects.PushBack(object, document.GetAllocator());
     }

     document.AddMember("data", array_objects, document.GetAllocator());

//    //to string
     rapidjson::StringBuffer buffer;

     rapidjson::Writer<rapidjson::StringBuffer> writer(buffer);
     document.Accept(writer);
     std::cout<<"Json data :"<<std::endl;
     const char* jsonData = buffer.GetString();
     std::cout<<"value = "<<jsonData;
     _jsonString = QString::fromStdString(buffer.GetString());
}

QString ExcelToJson::getJsonString()
{
    return _jsonString;
}
