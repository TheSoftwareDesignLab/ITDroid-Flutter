.class public Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvColumnReaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask",
        "<",
        "Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
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
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->doInBackground([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p1, "inputFiles"    # [Ljava/lang/String;

    .prologue
    .line 19
    const/4 v6, 0x0

    aget-object v4, p1, v6

    .line 20
    .local v4, "inputFile":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "absoluteInputFile":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 23
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v2, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v2, v5}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 25
    .local v2, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    invoke-virtual {v2}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v1

    .line 26
    .local v1, "columnNames":[Ljava/lang/String;
    invoke-virtual {v2}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v1    # "columnNames":[Ljava/lang/String;
    .end local v2    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v3

    .line 29
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "ColumnReaderTask"

    const-string v7, "Could not get columns!"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 1
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->setColumns([Ljava/lang/String;)V

    .line 37
    return-void
.end method
