.class public abstract Lcom/evancharlton/mileage/io/BaseExportActivity;
.super Landroid/app/Activity;
.source "BaseExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/io/BaseExportActivity$Update;,
        Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
    }
.end annotation


# instance fields
.field private mExportTask:Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

.field private mLog:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 112
    return-void
.end method


# virtual methods
.method public completed(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 67
    new-instance v0, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    iget-object v1, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/BaseExportActivity;->update(Lcom/evancharlton/mileage/io/BaseExportActivity$Update;)V

    .line 68
    return-void
.end method

.method protected abstract createExportTask()Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const v2, 0x7f03000b

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/io/BaseExportActivity;->setContentView(I)V

    .line 28
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "filename":Ljava/lang/String;
    const v2, 0x7f070116

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v1, v3, v5

    invoke-virtual {p0, v2, v3}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/io/BaseExportActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 31
    const v2, 0x7f090012

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/io/BaseExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 32
    const v2, 0x7f090013

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/io/BaseExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mLog:Landroid/widget/TextView;

    .line 34
    iget-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    iput-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mExportTask:Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    .line 37
    iget-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mExportTask:Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    if-nez v2, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity;->createExportTask()Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    move-result-object v2

    iput-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mExportTask:Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mExportTask:Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    invoke-virtual {v2, p0}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->attach(Lcom/evancharlton/mileage/io/BaseExportActivity;)V

    .line 42
    iget-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mExportTask:Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    invoke-virtual {v2}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    .line 43
    const-string v2, "mileage.db"

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/io/BaseExportActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "dbPath":Ljava/lang/String;
    iget-object v2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mExportTask:Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 46
    .end local v0    # "dbPath":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mExportTask:Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;

    return-object v0
.end method

.method public update(Lcom/evancharlton/mileage/io/BaseExportActivity$Update;)V
    .locals 3
    .param p1, "update"    # Lcom/evancharlton/mileage/io/BaseExportActivity$Update;

    .prologue
    .line 54
    iget-object v0, p1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->message:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->message:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mLog:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 57
    :cond_0
    iget v0, p1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->progress:I

    if-lez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 59
    iget-object v0, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->progress:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 61
    :cond_1
    iget v0, p1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->max:I

    if-lez v0, :cond_2

    .line 62
    iget-object v0, p0, Lcom/evancharlton/mileage/io/BaseExportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    iget v1, p1, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->max:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 64
    :cond_2
    return-void
.end method
