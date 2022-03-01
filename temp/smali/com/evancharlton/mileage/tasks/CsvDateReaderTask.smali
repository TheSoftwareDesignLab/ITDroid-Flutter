.class public Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvDateReaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask",
        "<",
        "Lcom/evancharlton/mileage/io/CsvDateFormatActivity;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CsvDateReaderTask"


# instance fields
.field private final mIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    .line 21
    iput p1, p0, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->mIndex:I

    .line 22
    const-string v0, "CsvDateReaderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parsing date from column #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
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
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 27
    const/4 v6, 0x0

    aget-object v4, p1, v6

    .line 28
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

    .line 30
    .local v0, "absoluteInputFile":Ljava/lang/String;
    :try_start_0
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 31
    .local v5, "reader":Ljava/io/BufferedReader;
    new-instance v1, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v1, v5}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 33
    .local v1, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    .line 35
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "data":[Ljava/lang/String;
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V

    .line 37
    iget v6, p0, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->mIndex:I

    aget-object v6, v2, v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .end local v1    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .end local v2    # "data":[Ljava/lang/String;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    :goto_0
    return-object v6

    .line 38
    :catch_0
    move-exception v3

    .line 39
    .local v3, "e":Ljava/io/IOException;
    const-string v6, "CsvDateReaderTask"

    const-string v7, "Could not get columns!"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    const/4 v6, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 15
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->setRawDate(Ljava/lang/String;)V

    .line 47
    return-void
.end method
