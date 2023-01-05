.class public Lcom/evancharlton/mileage/ExportActivity;
.super Landroid/app/Activity;
.source "ExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/ExportActivity$FilenameTask;
    }
.end annotation


# static fields
.field private static final EXPORTERS:[Ljava/lang/Class;

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field private static final FILE_TYPES:[Ljava/lang/String;


# instance fields
.field private mFileExt:Landroid/widget/TextView;

.field private mFileTypes:Landroid/widget/Spinner;

.field private mFilename:Landroid/widget/EditText;

.field private mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

.field private mSubmitButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ".db"

    aput-object v1, v0, v2

    const-string v1, ".csv"

    aput-object v1, v0, v3

    sput-object v0, Lcom/evancharlton/mileage/ExportActivity;->FILE_TYPES:[Ljava/lang/String;

    .line 30
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/evancharlton/mileage/io/DbExportActivity;

    aput-object v1, v0, v2

    const-class v1, Lcom/evancharlton/mileage/io/CsvExportActivity;

    aput-object v1, v0, v3

    sput-object v0, Lcom/evancharlton/mileage/ExportActivity;->EXPORTERS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 109
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/evancharlton/mileage/ExportActivity;->EXPORTERS:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/ExportActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ExportActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFileTypes:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/evancharlton/mileage/ExportActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ExportActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/evancharlton/mileage/ExportActivity;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/evancharlton/mileage/ExportActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ExportActivity;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/evancharlton/mileage/ExportActivity;->getExtension()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/evancharlton/mileage/ExportActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ExportActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFileExt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/evancharlton/mileage/ExportActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/ExportActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/ExportActivity;->startFilenameTask(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/evancharlton/mileage/ExportActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ExportActivity;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilename:Landroid/widget/EditText;

    return-object v0
.end method

.method private final getExtension()Ljava/lang/String;
    .locals 2

    .prologue
    .line 102
    sget-object v0, Lcom/evancharlton/mileage/ExportActivity;->FILE_TYPES:[Ljava/lang/String;

    iget-object v1, p0, Lcom/evancharlton/mileage/ExportActivity;->mFileTypes:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private getFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilename:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/evancharlton/mileage/ExportActivity;->getExtension()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private startFilenameTask(Z)V
    .locals 2
    .param p1, "cancel"    # Z

    .prologue
    .line 83
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->cancel(Z)Z

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    if-nez v0, :cond_1

    .line 88
    new-instance v0, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    invoke-direct {v0}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;-><init>()V

    iput-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    invoke-virtual {v0, p0}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->attach(Lcom/evancharlton/mileage/ExportActivity;)V

    .line 91
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_2

    .line 92
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 94
    :cond_2
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const v0, 0x7f03000a

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ExportActivity;->setContentView(I)V

    .line 50
    const v0, 0x7f09000e

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFileTypes:Landroid/widget/Spinner;

    .line 51
    const v0, 0x7f09000f

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilename:Landroid/widget/EditText;

    .line 52
    const v0, 0x7f090010

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFileExt:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ExportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mSubmitButton:Landroid/widget/Button;

    .line 54
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Lcom/evancharlton/mileage/ExportActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ExportActivity$1;-><init>(Lcom/evancharlton/mileage/ExportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFileTypes:Landroid/widget/Spinner;

    new-instance v1, Lcom/evancharlton/mileage/ExportActivity$2;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ExportActivity$2;-><init>(Lcom/evancharlton/mileage/ExportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 78
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ExportActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    iput-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/evancharlton/mileage/ExportActivity;->startFilenameTask(Z)V

    .line 80
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity;->mFilenameTask:Lcom/evancharlton/mileage/ExportActivity$FilenameTask;

    return-object v0
.end method
