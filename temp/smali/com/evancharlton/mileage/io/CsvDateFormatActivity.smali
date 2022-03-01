.class public Lcom/evancharlton/mileage/io/CsvDateFormatActivity;
.super Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;
.source "CsvDateFormatActivity.java"


# static fields
.field public static final DATE_FORMAT:Ljava/lang/String; = "date_format"


# instance fields
.field private mDateFormatter:Ljava/text/DateFormat;

.field private mDateReaderTask:Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

.field private mFormats:Landroid/widget/Spinner;

.field private mParsedDateView:Landroid/widget/TextView;

.field private mRawDateView:Landroid/widget/TextView;

.field private mTimeFormatter:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/evancharlton/mileage/io/CsvDateFormatActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/io/CsvDateFormatActivity;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->formatDate()V

    return-void
.end method

.method private formatDate()V
    .locals 7

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->getFormatPattern()Ljava/lang/String;

    move-result-object v3

    .line 96
    .local v3, "format":Ljava/lang/String;
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "df":Ljava/text/SimpleDateFormat;
    :try_start_0
    iget-object v5, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mRawDateView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 101
    .local v0, "d":Ljava/util/Date;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateFormatter:Ljava/text/DateFormat;

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 105
    .end local v0    # "d":Ljava/util/Date;
    .local v4, "parsed":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mParsedDateView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    return-void

    .line 102
    .end local v4    # "parsed":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/text/ParseException;
    const v5, 0x7f0700c5

    invoke-virtual {p0, v5}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "parsed":Ljava/lang/String;
    goto :goto_0
.end method

.method private getFormatPattern()Ljava/lang/String;
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mFormats:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mFormats:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private restoreTask()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateReaderTask:Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    .line 75
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateReaderTask:Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "timestamp"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;-><init>(I)V

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateReaderTask:Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateReaderTask:Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->attach(Ljava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateReaderTask:Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 80
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateReaderTask:Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 82
    :cond_1
    return-void
.end method


# virtual methods
.method protected buildIntent(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    const-class v0, Lcom/evancharlton/mileage/io/CsvImportActivity;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 111
    const-string v0, "date_format"

    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->getFormatPattern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->setResult(I)V

    .line 113
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/evancharlton/mileage/io/importers/CsvWizardActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030013

    iget-object v2, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f090025

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mRawDateView:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f090026

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mFormats:Landroid/widget/Spinner;

    .line 45
    const v0, 0x7f090027

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mParsedDateView:Landroid/widget/TextView;

    .line 47
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateFormatter:Ljava/text/DateFormat;

    .line 48
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mTimeFormatter:Ljava/text/DateFormat;

    .line 50
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mFormats:Landroid/widget/Spinner;

    new-instance v1, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/adapters/DateFormatAdapter;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 51
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mFormats:Landroid/widget/Spinner;

    new-instance v1, Lcom/evancharlton/mileage/io/CsvDateFormatActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity$1;-><init>(Lcom/evancharlton/mileage/io/CsvDateFormatActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 62
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->restoreTask()V

    .line 64
    const v0, 0x7f07006b

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->setHeaderText(I)V

    .line 65
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mDateReaderTask:Lcom/evancharlton/mileage/tasks/CsvDateReaderTask;

    return-object v0
.end method

.method public setRawDate(Ljava/lang/String;)V
    .locals 1
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->mRawDateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/CsvDateFormatActivity;->formatDate()V

    .line 88
    return-void
.end method
