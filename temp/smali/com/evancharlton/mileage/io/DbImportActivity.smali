.class public Lcom/evancharlton/mileage/io/DbImportActivity;
.super Landroid/app/Activity;
.source "DbImportActivity.java"


# instance fields
.field private mLog:Landroid/widget/TextView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mTask:Lcom/evancharlton/mileage/tasks/DbImportTask;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private restoreTask()V
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/DbImportActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/tasks/DbImportTask;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mTask:Lcom/evancharlton/mileage/tasks/DbImportTask;

    .line 35
    iget-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mTask:Lcom/evancharlton/mileage/tasks/DbImportTask;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/evancharlton/mileage/tasks/DbImportTask;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/DbImportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "filename"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/tasks/DbImportTask;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mTask:Lcom/evancharlton/mileage/tasks/DbImportTask;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mTask:Lcom/evancharlton/mileage/tasks/DbImportTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->attach(Ljava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mTask:Lcom/evancharlton/mileage/tasks/DbImportTask;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 41
    iget-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mTask:Lcom/evancharlton/mileage/tasks/DbImportTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 43
    :cond_1
    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mLog:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 47
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/DbImportActivity;->setContentView(I)V

    .line 26
    const v0, 0x7f090013

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/DbImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mLog:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f090012

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/DbImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 29
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/DbImportActivity;->restoreTask()V

    .line 30
    return-void
.end method

.method public setWorking(Z)V
    .locals 2
    .param p1, "isWorking"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 51
    if-nez p1, :cond_0

    .line 52
    iget-object v0, p0, Lcom/evancharlton/mileage/io/DbImportActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 54
    :cond_0
    return-void
.end method
