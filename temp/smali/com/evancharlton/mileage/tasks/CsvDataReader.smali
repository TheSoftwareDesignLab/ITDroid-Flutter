.class public Lcom/evancharlton/mileage/tasks/CsvDataReader;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvDataReader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask",
        "<",
        "Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDataReader;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10
    .param p1, "inputFiles"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 19
    aget-object v4, p1, v7

    .line 20
    .local v4, "inputFile":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "absoluteInputFile":Ljava/lang/String;
    const/4 v5, 0x0

    .line 22
    .local v5, "reader":Ljava/io/BufferedReader;
    const/4 v1, 0x0

    .line 24
    .local v1, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .local v6, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v2, v6}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 27
    .end local v1    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .local v2, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    const/4 v7, 0x1

    :try_start_2
    new-array v7, v7, [[Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/evancharlton/mileage/tasks/CsvDataReader;->publishProgress([Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move-object v1, v2

    .end local v2    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v1    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    move-object v5, v6

    .line 32
    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :goto_0
    if-eqz v5, :cond_0

    .line 33
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    .line 35
    :cond_0
    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 41
    :cond_1
    :goto_1
    const/4 v7, 0x0

    return-object v7

    .line 28
    :catch_0
    move-exception v3

    .line 29
    .local v3, "e":Ljava/io/IOException;
    :goto_2
    const-string v7, "ColumnReaderTask"

    const-string v8, "Could not get columns!"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 38
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    goto :goto_1

    .line 28
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v3

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2

    .end local v1    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v6    # "reader":Ljava/io/BufferedReader;
    :catch_3
    move-exception v3

    move-object v1, v2

    .end local v2    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .restart local v1    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    move-object v5, v6

    .end local v6    # "reader":Ljava/io/BufferedReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDataReader;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "v"    # Ljava/lang/Void;

    .prologue
    .line 52
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [[Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDataReader;->onProgressUpdate([[Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([[Ljava/lang/String;)V
    .locals 0
    .param p1, "rows"    # [[Ljava/lang/String;

    .prologue
    .line 47
    return-void
.end method
