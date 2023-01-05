.class public Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "CsvVehicleReaderTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask",
        "<",
        "Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CsvVehicleReaderTask"


# instance fields
.field private final INDEX:I

.field private final mTitles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->mTitles:Ljava/util/ArrayList;

    .line 24
    iput p1, p0, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->INDEX:I

    .line 25
    const-string v0, "CsvVehicleReaderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Looking for unique entries in column #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 11
    .param p1, "inputFiles"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 30
    aget-object v5, p1, v8

    .line 31
    .local v5, "inputFile":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 32
    .local v0, "absoluteInputFile":Ljava/lang/String;
    const/4 v4, 0x0

    .line 34
    .local v4, "i":I
    :try_start_0
    new-instance v6, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/FileReader;

    invoke-direct {v8, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 35
    .local v6, "reader":Ljava/io/BufferedReader;
    new-instance v1, Lau/com/bytecode/opencsv/CSVReader;

    invoke-direct {v1, v6}, Lau/com/bytecode/opencsv/CSVReader;-><init>(Ljava/io/Reader;)V

    .line 37
    .local v1, "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    .line 40
    :goto_0
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->readNext()[Ljava/lang/String;

    move-result-object v2

    .local v2, "data":[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 41
    iget v8, p0, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->INDEX:I

    aget-object v7, v2, v8

    .line 42
    .local v7, "title":Ljava/lang/String;
    iget-object v8, p0, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 43
    const-string v8, "CsvVehicleReaderTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Found a unique vehicle: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object v8, p0, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->mTitles:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v7, v8, v9

    invoke-virtual {p0, v8}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->publishProgress([Ljava/lang/Object;)V

    .line 47
    :cond_0
    add-int/lit8 v4, v4, 0x1

    .line 48
    goto :goto_0

    .line 49
    .end local v7    # "title":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Lau/com/bytecode/opencsv/CSVReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    .end local v1    # "csvReader":Lau/com/bytecode/opencsv/CSVReader;
    .end local v2    # "data":[Ljava/lang/String;
    .end local v6    # "reader":Ljava/io/BufferedReader;
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    return-object v8

    .line 50
    :catch_0
    move-exception v3

    .line 51
    .local v3, "e":Ljava/io/IOException;
    const-string v8, "CsvVehicleReaderTask"

    const-string v9, "Could not get columns!"

    invoke-static {v8, v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "numRows"    # Ljava/lang/Integer;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->setRowCount(I)V

    .line 64
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 16
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "titles"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/CsvVehicleReaderTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;->dataRead(Ljava/lang/String;)V

    .line 59
    return-void
.end method
