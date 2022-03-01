.class public Lcom/evancharlton/mileage/tasks/CsvImportTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvImportTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask",
        "<",
        "Lcom/evancharlton/mileage/io/CsvImportActivity;",
        "Landroid/os/Bundle;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CsvImportTask"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    return-void
.end method

.method private getData(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "data"    # [Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object v0, p3, v0

    return-object v0
.end method

.method private setBoolean(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 2
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0, p3, p2, p4}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getData(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 136
    .local v0, "parsed":Z
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 137
    return-void
.end method

.method private setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V
    .locals 7
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "column"    # Ljava/lang/String;
    .param p3, "args"    # Landroid/os/Bundle;
    .param p4, "data"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
        }
    .end annotation

    .prologue
    .line 123
    :try_start_0
    invoke-direct {p0, p3, p2, p4}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getData(Landroid/os/Bundle;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 124
    .local v3, "value":Ljava/lang/String;
    const-string v4, "CsvImportTask"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 126
    .local v1, "parsed":D
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "parsed":D
    .end local v3    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 129
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {p1, p2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Ljava/lang/Integer;
    .locals 27
    .param p1, "params"    # [Landroid/os/Bundle;

    .prologue
    .line 32
    const/16 v23, 0x0

    aget-object v3, p1, v23

    .line 34
    .local v3, "args":Landroid/os/Bundle;
    const-string v23, "wipe data"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    .line 35
    .local v12, "erase":Z
    if-eqz v12, :cond_0

    .line 36
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/evancharlton/mileage/io/CsvImportActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 37
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const v25, 0x7f07012b

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 40
    :cond_0
    new-instance v15, Ljava/text/SimpleDateFormat;

    const-string v23, "date_format"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v15, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 43
    .local v15, "formatter":Ljava/text/SimpleDateFormat;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/evancharlton/mileage/io/CsvImportActivity;

    invoke-virtual/range {v23 .. v23}, Lcom/evancharlton/mileage/io/CsvImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v23

    sget-object v24, Lcom/evancharlton/mileage/provider/tables/CacheTable;->BASE_URI:Landroid/net/Uri;

    const/16 v25, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v23 .. v26}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 44
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const v25, 0x7f07012c

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 46
    const-string v23, "filename"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, "base":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 48
    .local v14, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    .line 49
    .local v5, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    const/16 v16, 0x0

    .line 51
    .local v16, "i":I
    :try_start_0
    new-instance v17, Ljava/io/BufferedReader;

    new-instance v23, Ljava/io/FileReader;

    move-object/from16 v0, v23

    invoke-direct {v0, v14}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 52
    .local v17, "reader":Ljava/io/BufferedReader;
    new-instance v6, Lau/com/bytecode/opencsv/CSVReader;

    move-object/from16 v0, v17

    invoke-direct {v6, v0}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    .end local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .local v6, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    :try_start_1
    invoke-virtual {v6}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    .line 57
    :goto_0
    invoke-virtual {v6}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    .local v8, "data":[Ljava/lang/String;
    if-eqz v8, :cond_2

    .line 59
    :try_start_2
    new-instance v18, Landroid/content/ContentValues;

    invoke-direct/range {v18 .. v18}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v18, "values":Landroid/content/ContentValues;
    const-string v23, "total_cost"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 61
    const-string v23, "price"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 62
    const-string v23, "volume"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 63
    const-string v23, "odometer"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 64
    const-string v23, "economy"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 65
    const-string v23, "latitude"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 66
    const-string v23, "longitude"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setDouble(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 67
    const-string v23, "is_partial"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setBoolean(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 68
    const-string v23, "restart"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->setBoolean(Landroid/content/ContentValues;Ljava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;)V

    .line 70
    const-string v23, "vehicle_id"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    .line 71
    .local v22, "vehicleIndex":I
    aget-object v19, v8, v22

    .line 72
    .local v19, "vehicle":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "vehicle_"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 73
    .local v20, "vehicleId":J
    const-string v23, "vehicle_id"

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 75
    const-string v23, "timestamp"

    move-object/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 76
    .local v10, "dateIndex":I
    aget-object v9, v8, v10

    .line 77
    .local v9, "date":Ljava/lang/String;
    invoke-virtual {v15, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    .line 78
    .local v7, "d":Ljava/util/Date;
    const-string v23, "timestamp"

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 80
    new-instance v13, Lcom/evancharlton/mileage/dao/Fillup;

    move-object/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/evancharlton/mileage/dao/Fillup;-><init>(Landroid/content/ContentValues;)V

    .line 81
    .local v13, "f":Lcom/evancharlton/mileage/dao/Fillup;
    invoke-virtual/range {p0 .. p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Lcom/evancharlton/mileage/dao/Fillup;->save(Landroid/content/Context;)Z

    .line 82
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/evancharlton/mileage/exceptions/InvalidFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 83
    .end local v7    # "d":Ljava/util/Date;
    .end local v9    # "date":Ljava/lang/String;
    .end local v10    # "dateIndex":I
    .end local v13    # "f":Lcom/evancharlton/mileage/dao/Fillup;
    .end local v18    # "values":Landroid/content/ContentValues;
    .end local v19    # "vehicle":Ljava/lang/String;
    .end local v20    # "vehicleId":J
    .end local v22    # "vehicleIndex":I
    :catch_0
    move-exception v11

    .line 84
    .local v11, "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    const/16 v23, 0x2

    :try_start_3
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    add-int/lit8 v16, v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-virtual {v11}, Lcom/evancharlton/mileage/exceptions/InvalidFieldException;->getErrorMessage()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    .line 87
    .end local v8    # "data":[Ljava/lang/String;
    .end local v11    # "e":Lcom/evancharlton/mileage/exceptions/InvalidFieldException;
    :catch_1
    move-exception v23

    move-object v5, v6

    .line 92
    .end local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    :goto_1
    if-eqz v5, :cond_1

    .line 93
    :try_start_4
    invoke-virtual {v5}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 99
    :cond_1
    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    return-object v23

    .line 92
    .end local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v8    # "data":[Ljava/lang/String;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    :cond_2
    if-eqz v6, :cond_3

    .line 93
    :try_start_5
    invoke-virtual {v6}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    move-object v5, v6

    .line 96
    .end local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    goto :goto_2

    .line 95
    .end local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    :catch_2
    move-exception v23

    move-object v5, v6

    .line 97
    .end local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    goto :goto_2

    .line 88
    .end local v8    # "data":[Ljava/lang/String;
    .end local v17    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v11

    .line 89
    .local v11, "e":Ljava/text/ParseException;
    :goto_3
    :try_start_6
    const-string v23, "CsvImportTask"

    const-string v24, "Couldn\'t parse a field!"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v0, v1, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 92
    if-eqz v5, :cond_1

    .line 93
    :try_start_7
    invoke-virtual {v5}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 95
    :catch_4
    move-exception v23

    goto :goto_2

    .line 91
    .end local v11    # "e":Ljava/text/ParseException;
    :catchall_0
    move-exception v23

    .line 92
    :goto_4
    if-eqz v5, :cond_4

    .line 93
    :try_start_8
    invoke-virtual {v5}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 96
    :cond_4
    :goto_5
    throw v23

    .line 95
    :catch_5
    move-exception v23

    goto :goto_2

    :catch_6
    move-exception v24

    goto :goto_5

    .line 91
    .end local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v17    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v23

    move-object v5, v6

    .end local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    goto :goto_4

    .line 88
    .end local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    :catch_7
    move-exception v11

    move-object v5, v6

    .end local v6    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v5    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    goto :goto_3

    .line 87
    .end local v17    # "reader":Ljava/io/BufferedReader;
    :catch_8
    move-exception v23

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, [Landroid/os/Bundle;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->doInBackground([Landroid/os/Bundle;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Integer;

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvImportActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvImportActivity;->completed(I)V

    .line 114
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "updates"    # [Ljava/lang/Integer;

    .prologue
    .line 104
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvImportActivity;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvImportActivity;->error(I)V

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvImportActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvImportActivity;->update(I)V

    .line 109
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 27
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvImportTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
