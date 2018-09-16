QT += widgets
QT += gui-private
requires(qtConfig(filedialog))

HEADERS       = mainwindow.h \
    QtXlsxWriter/src/xlsx/xlsxabstractooxmlfile.h \
    QtXlsxWriter/src/xlsx/xlsxabstractooxmlfile_p.h \
    QtXlsxWriter/src/xlsx/xlsxabstractsheet.h \
    QtXlsxWriter/src/xlsx/xlsxabstractsheet_p.h \
    QtXlsxWriter/src/xlsx/xlsxcell.h \
    QtXlsxWriter/src/xlsx/xlsxcell_p.h \
    QtXlsxWriter/src/xlsx/xlsxcellformula.h \
    QtXlsxWriter/src/xlsx/xlsxcellformula_p.h \
    QtXlsxWriter/src/xlsx/xlsxcellrange.h \
    QtXlsxWriter/src/xlsx/xlsxcellreference.h \
    QtXlsxWriter/src/xlsx/xlsxchart.h \
    QtXlsxWriter/src/xlsx/xlsxchart_p.h \
    QtXlsxWriter/src/xlsx/xlsxchartsheet.h \
    QtXlsxWriter/src/xlsx/xlsxchartsheet_p.h \
    QtXlsxWriter/src/xlsx/xlsxcolor_p.h \
    QtXlsxWriter/src/xlsx/xlsxconditionalformatting.h \
    QtXlsxWriter/src/xlsx/xlsxconditionalformatting_p.h \
    QtXlsxWriter/src/xlsx/xlsxcontenttypes_p.h \
    QtXlsxWriter/src/xlsx/xlsxdatavalidation.h \
    QtXlsxWriter/src/xlsx/xlsxdatavalidation_p.h \
    QtXlsxWriter/src/xlsx/xlsxdocpropsapp_p.h \
    QtXlsxWriter/src/xlsx/xlsxdocpropscore_p.h \
    QtXlsxWriter/src/xlsx/xlsxdocument.h \
    QtXlsxWriter/src/xlsx/xlsxdocument_p.h \
    QtXlsxWriter/src/xlsx/xlsxdrawing_p.h \
    QtXlsxWriter/src/xlsx/xlsxdrawinganchor_p.h \
    QtXlsxWriter/src/xlsx/xlsxformat.h \
    QtXlsxWriter/src/xlsx/xlsxformat_p.h \
    QtXlsxWriter/src/xlsx/xlsxglobal.h \
    QtXlsxWriter/src/xlsx/xlsxmediafile_p.h \
    QtXlsxWriter/src/xlsx/xlsxnumformatparser_p.h \
    QtXlsxWriter/src/xlsx/xlsxrelationships_p.h \
    QtXlsxWriter/src/xlsx/xlsxrichstring.h \
    QtXlsxWriter/src/xlsx/xlsxrichstring_p.h \
    QtXlsxWriter/src/xlsx/xlsxsharedstrings_p.h \
    QtXlsxWriter/src/xlsx/xlsxsimpleooxmlfile_p.h \
    QtXlsxWriter/src/xlsx/xlsxstyles_p.h \
    QtXlsxWriter/src/xlsx/xlsxtheme_p.h \
    QtXlsxWriter/src/xlsx/xlsxutility_p.h \
    QtXlsxWriter/src/xlsx/xlsxworkbook.h \
    QtXlsxWriter/src/xlsx/xlsxworkbook_p.h \
    QtXlsxWriter/src/xlsx/xlsxworksheet.h \
    QtXlsxWriter/src/xlsx/xlsxworksheet_p.h \
    QtXlsxWriter/src/xlsx/xlsxzipreader_p.h \
    QtXlsxWriter/src/xlsx/xlsxzipwriter_p.h \
    src/exceltojson.h \
    rapidjson/error/en.h \
    rapidjson/error/error.h \
    rapidjson/internal/biginteger.h \
    rapidjson/internal/diyfp.h \
    rapidjson/internal/dtoa.h \
    rapidjson/internal/ieee754.h \
    rapidjson/internal/itoa.h \
    rapidjson/internal/meta.h \
    rapidjson/internal/pow10.h \
    rapidjson/internal/regex.h \
    rapidjson/internal/stack.h \
    rapidjson/internal/strfunc.h \
    rapidjson/internal/strtod.h \
    rapidjson/internal/swap.h \
    rapidjson/msinttypes/inttypes.h \
    rapidjson/msinttypes/stdint.h \
    rapidjson/allocators.h \
    rapidjson/cursorstreamwrapper.h \
    rapidjson/document.h \
    rapidjson/encodedstream.h \
    rapidjson/encodings.h \
    rapidjson/filereadstream.h \
    rapidjson/filewritestream.h \
    rapidjson/fwd.h \
    rapidjson/istreamwrapper.h \
    rapidjson/memorybuffer.h \
    rapidjson/memorystream.h \
    rapidjson/ostreamwrapper.h \
    rapidjson/pointer.h \
    rapidjson/prettywriter.h \
    rapidjson/rapidjson.h \
    rapidjson/reader.h \
    rapidjson/schema.h \
    rapidjson/stream.h \
    rapidjson/stringbuffer.h \
    rapidjson/writer.h

SOURCES       = main.cpp \
                mainwindow.cpp \
    QtXlsxWriter/src/xlsx/xlsxabstractooxmlfile.cpp \
    QtXlsxWriter/src/xlsx/xlsxabstractsheet.cpp \
    QtXlsxWriter/src/xlsx/xlsxcell.cpp \
    QtXlsxWriter/src/xlsx/xlsxcellformula.cpp \
    QtXlsxWriter/src/xlsx/xlsxcellrange.cpp \
    QtXlsxWriter/src/xlsx/xlsxcellreference.cpp \
    QtXlsxWriter/src/xlsx/xlsxchart.cpp \
    QtXlsxWriter/src/xlsx/xlsxchartsheet.cpp \
    QtXlsxWriter/src/xlsx/xlsxcolor.cpp \
    QtXlsxWriter/src/xlsx/xlsxconditionalformatting.cpp \
    QtXlsxWriter/src/xlsx/xlsxcontenttypes.cpp \
    QtXlsxWriter/src/xlsx/xlsxdatavalidation.cpp \
    QtXlsxWriter/src/xlsx/xlsxdocpropsapp.cpp \
    QtXlsxWriter/src/xlsx/xlsxdocpropscore.cpp \
    QtXlsxWriter/src/xlsx/xlsxdocument.cpp \
    QtXlsxWriter/src/xlsx/xlsxdrawing.cpp \
    QtXlsxWriter/src/xlsx/xlsxdrawinganchor.cpp \
    QtXlsxWriter/src/xlsx/xlsxformat.cpp \
    QtXlsxWriter/src/xlsx/xlsxmediafile.cpp \
    QtXlsxWriter/src/xlsx/xlsxnumformatparser.cpp \
    QtXlsxWriter/src/xlsx/xlsxrelationships.cpp \
    QtXlsxWriter/src/xlsx/xlsxrichstring.cpp \
    QtXlsxWriter/src/xlsx/xlsxsharedstrings.cpp \
    QtXlsxWriter/src/xlsx/xlsxsimpleooxmlfile.cpp \
    QtXlsxWriter/src/xlsx/xlsxstyles.cpp \
    QtXlsxWriter/src/xlsx/xlsxtheme.cpp \
    QtXlsxWriter/src/xlsx/xlsxutility.cpp \
    QtXlsxWriter/src/xlsx/xlsxworkbook.cpp \
    QtXlsxWriter/src/xlsx/xlsxworksheet.cpp \
    QtXlsxWriter/src/xlsx/xlsxzipreader.cpp \
    QtXlsxWriter/src/xlsx/xlsxzipwriter.cpp \
    src/exceltojson.cpp
#! [0]
RESOURCES     = ExcelToJson.qrc
#! [0]

# install
target.path = $$[QT_INSTALL_EXAMPLES]/widgets/mainwindows/ExcelToJson
INSTALLS += target
