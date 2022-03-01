.class public Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;
.super Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;
.source "CsvColumnMappingActivity.java"


# instance fields
.field private mColumnReaderTask:Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

.field private final mColumnSpinners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/Spinner;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnSpinners:Ljava/util/ArrayList;

    return-void
.end method

.method private restoreTask()V
    .locals 5

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnReaderTask:Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    .line 42
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnReaderTask:Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    invoke-direct {v0}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnReaderTask:Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnReaderTask:Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->attach(Ljava/lang/Object;)V

    .line 46
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnReaderTask:Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnReaderTask:Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "filename"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    :cond_1
    return-void
.end method


# virtual methods
.method protected buildIntent(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 74
    const-class v4, Lcom/evancharlton/mileage/io/CsvVehicleMappingActivity;

    invoke-virtual {p1, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 75
    iget-object v4, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnSpinners:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 76
    .local v0, "columnSpinner":Landroid/widget/Spinner;
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "dbField":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/widget/Spinner;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 78
    .local v1, "csvIndex":I
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 80
    .end local v0    # "columnSpinner":Landroid/widget/Spinner;
    .end local v1    # "csvIndex":I
    .end local v2    # "dbField":Ljava/lang/String;
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->setResult(I)V

    .line 81
    const/4 v4, 0x1

    return v4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->restoreTask()V

    .line 31
    const v0, 0x7f070069

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->setHeaderText(I)V

    .line 32
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnReaderTask:Lcom/evancharlton/mileage/tasks/CsvColumnReaderTask;

    return-object v0
.end method

.method public setColumns([Ljava/lang/String;)V
    .locals 10
    .param p1, "columnNames"    # [Ljava/lang/String;

    .prologue
    .line 52
    iget-object v7, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnSpinners:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 53
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 54
    .local v2, "inflater":Landroid/view/LayoutInflater;
    array-length v3, p1

    .line 55
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 56
    aget-object v0, p1, v1

    .line 57
    .local v0, "columnName":Ljava/lang/String;
    const-string v7, "CsvImportActivity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Adding a UI mapping for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const v7, 0x7f030014

    iget-object v8, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 59
    .local v6, "v":Landroid/view/View;
    const v7, 0x7f090014

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 60
    .local v5, "title":Landroid/widget/TextView;
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setId(I)V

    .line 62
    const v7, 0x7f090028

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 63
    .local v4, "spinner":Landroid/widget/Spinner;
    new-instance v7, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;

    invoke-direct {v7, p0}, Lcom/evancharlton/mileage/adapters/CsvFieldAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 64
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setId(I)V

    .line 65
    invoke-virtual {v4, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 66
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setTag(Ljava/lang/Object;)V

    .line 68
    iget-object v7, p0, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;->mColumnSpinners:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v0    # "columnName":Ljava/lang/String;
    .end local v4    # "spinner":Landroid/widget/Spinner;
    .end local v5    # "title":Landroid/widget/TextView;
    .end local v6    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
