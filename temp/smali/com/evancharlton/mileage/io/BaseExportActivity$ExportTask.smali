.class public abstract Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
.super Landroid/os/AsyncTask;
.source "BaseExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/io/BaseExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "ExportTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Lcom/evancharlton/mileage/io/BaseExportActivity$Update;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    return-void
.end method


# virtual methods
.method public final attach(Lcom/evancharlton/mileage/io/BaseExportActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/evancharlton/mileage/io/BaseExportActivity;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    .line 77
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 86
    const/4 v2, 0x0

    aget-object v0, p1, v2

    .line 87
    .local v0, "inputFile":Ljava/lang/String;
    const/4 v2, 0x1

    aget-object v1, p1, v2

    .line 88
    .local v1, "outputFile":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->performExport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    const v2, 0x7f070117

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/16 v5, 0x2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "msg":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    invoke-virtual {v1, v0}, Lcom/evancharlton/mileage/io/BaseExportActivity;->completed(Ljava/lang/String;)V

    .line 107
    return-void

    .line 104
    .end local v0    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    const v2, 0x7f070118

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method protected final onPreExecute()V
    .locals 4

    .prologue
    .line 81
    iget-object v0, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    new-instance v1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    iget-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/BaseExportActivity;->update(Lcom/evancharlton/mileage/io/BaseExportActivity$Update;)V

    .line 82
    return-void
.end method

.method protected final varargs onProgressUpdate([Lcom/evancharlton/mileage/io/BaseExportActivity$Update;)V
    .locals 2
    .param p1, "updates"    # [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->mActivity:Lcom/evancharlton/mileage/io/BaseExportActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/BaseExportActivity;->update(Lcom/evancharlton/mileage/io/BaseExportActivity$Update;)V

    .line 94
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 72
    check-cast p1, [Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->onProgressUpdate([Lcom/evancharlton/mileage/io/BaseExportActivity$Update;)V

    return-void
.end method

.method public abstract performExport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method
