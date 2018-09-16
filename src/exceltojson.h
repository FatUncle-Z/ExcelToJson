#ifndef EXCELTOJSON_H
#define EXCELTOJSON_H

#include <QString>

class ExcelToJson
{
private:
    QString _jsonString;

private:
    void loadExcelFileByQJson(QString filePath);
    void loadExcelFileByRapidJson(QString filePath);

public:
    ExcelToJson();

    void loadExcelFile(QString filePath);

    QString getJsonString();
};

#endif // EXCELTOJSON_H
