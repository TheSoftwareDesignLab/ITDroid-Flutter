.class final Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;
.super Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
.source "CsvExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/io/CsvExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CsvExportTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evancharlton/mileage/io/CsvExportActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evancharlton/mileage/io/CsvExportActivity$1;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;-><init>()V

    return-void
.end method

.method private sendUpdate(II)V
    .locals 8
    .param p1, "num_written"    # I
    .param p2, "total"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 92
    new-array v0, v7, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    new-instance v1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    iget-object v2, p0, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    const v3, 0x7f070128

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;I)V

    aput-object v1, v0, v6

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->publishProgress([Ljava/lang/Object;)V

    .line 94
    return-void
.end method


# virtual methods
.method public performExport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 17
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/lang/String;

    .prologue
    .line 29
    :try_start_0
    new-instance v16, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    move-object/from16 v0, p2

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 30
    .local v16, "writer":Ljava/io/BufferedWriter;
    new-instance v11, Lau/com/bytecode/opencsv/CSVWriter;

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Lau/com/bytecode/opencsv/CSVWriter;-><init>(Ljava/io/Writer;)V

    .line 33
    .local v11, "csvWriter":Lau/com/bytecode/opencsv/CSVWriter;
    sget-object v2, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->BASE_URI:Landroid/net/Uri;

    .line 34
    .local v2, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->CSV_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 36
    .local v13, "fillups":Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 37
    .local v10, "FILLUP_COUNT":I
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    const/4 v3, 0x0

    new-instance v4, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    const/4 v5, 0x0

    add-int/lit8 v6, v10, 0x1

    invoke-direct {v4, v5, v6}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(II)V

    aput-object v4, v1, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->publishProgress([Ljava/lang/Object;)V

    .line 39
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->CSV_PROJECTION:[Ljava/lang/String;

    array-length v7, v1

    .line 40
    .local v7, "COLUMN_COUNT":I
    new-array v12, v7, [Ljava/lang/String;

    .line 43
    .local v12, "data":[Ljava/lang/String;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    if-ge v14, v7, :cond_0

    .line 44
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    sget-object v3, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->PLAINTEXT:[I

    aget v3, v3, v14

    invoke-virtual {v1, v3}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v14

    .line 43
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {v11, v12}, Lau/com/bytecode/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    .line 47
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVWriter;->flush()V

    .line 48
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    const/4 v3, 0x0

    new-instance v4, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    const v6, 0x7f070127

    invoke-virtual {v5, v6}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v4, v5, v6}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;I)V

    aput-object v4, v1, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->publishProgress([Ljava/lang/Object;)V

    .line 51
    const/4 v8, -0x1

    .line 52
    .local v8, "COLUMN_DATE":I
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v7, :cond_2

    .line 53
    sget-object v1, Lcom/evancharlton/mileage/provider/tables/FillupsTable;->CSV_PROJECTION:[Ljava/lang/String;

    aget-object v1, v1, v14

    const-string v3, "timestamp"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 54
    move v8, v14

    .line 52
    :cond_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 58
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    invoke-static {v1}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v9

    .line 62
    .local v9, "DATE_FORMAT":Ljava/text/DateFormat;
    const/4 v15, 0x0

    .line 63
    .local v15, "numWritten":I
    :goto_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 64
    const/4 v14, 0x0

    :goto_3
    if-ge v14, v7, :cond_4

    .line 65
    if-ne v14, v8, :cond_3

    .line 66
    new-instance v1, Ljava/util/Date;

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v9, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v14

    .line 64
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 68
    :cond_3
    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v14

    goto :goto_4

    .line 86
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v7    # "COLUMN_COUNT":I
    .end local v8    # "COLUMN_DATE":I
    .end local v9    # "DATE_FORMAT":Ljava/text/DateFormat;
    .end local v10    # "FILLUP_COUNT":I
    .end local v11    # "csvWriter":Lau/com/bytecode/opencsv/CSVWriter;
    .end local v12    # "data":[Ljava/lang/String;
    .end local v13    # "fillups":Landroid/database/Cursor;
    .end local v14    # "i":I
    .end local v15    # "numWritten":I
    .end local v16    # "writer":Ljava/io/BufferedWriter;
    :catch_0
    move-exception v1

    .line 88
    const/16 p2, 0x0

    .end local p2    # "outputFile":Ljava/lang/String;
    :goto_5
    return-object p2

    .line 71
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v7    # "COLUMN_COUNT":I
    .restart local v8    # "COLUMN_DATE":I
    .restart local v9    # "DATE_FORMAT":Ljava/text/DateFormat;
    .restart local v10    # "FILLUP_COUNT":I
    .restart local v11    # "csvWriter":Lau/com/bytecode/opencsv/CSVWriter;
    .restart local v12    # "data":[Ljava/lang/String;
    .restart local v13    # "fillups":Landroid/database/Cursor;
    .restart local v14    # "i":I
    .restart local v15    # "numWritten":I
    .restart local v16    # "writer":Ljava/io/BufferedWriter;
    .restart local p2    # "outputFile":Ljava/lang/String;
    :cond_4
    invoke-virtual {v11, v12}, Lau/com/bytecode/opencsv/CSVWriter;->writeNext([Ljava/lang/String;)V

    .line 72
    add-int/lit8 v15, v15, 0x1

    rem-int/lit8 v1, v15, 0xa

    if-nez v1, :cond_5

    .line 73
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->sendUpdate(II)V

    .line 74
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVWriter;->flush()V

    goto :goto_2

    .line 76
    :cond_5
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    const/4 v3, 0x0

    new-instance v4, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    invoke-direct {v4, v15}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(I)V

    aput-object v4, v1, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    .line 79
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v10}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;->sendUpdate(II)V

    .line 80
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVWriter;->flush()V

    .line 81
    invoke-virtual {v11}, Lau/com/bytecode/opencsv/CSVWriter;->close()V

    .line 83
    invoke-interface {v13}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5
.end method
