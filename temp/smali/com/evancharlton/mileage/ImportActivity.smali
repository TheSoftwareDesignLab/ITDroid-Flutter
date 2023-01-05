.class public Lcom/evancharlton/mileage/ImportActivity;
.super Landroid/app/Activity;
.source "ImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/ImportActivity$FileAdapter;,
        Lcom/evancharlton/mileage/ImportActivity$FileLoader;
    }
.end annotation


# static fields
.field private static final DIALOG_NO_FILES:I = 0x1

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field private static final FILE_TYPES:[Ljava/lang/String;

.field private static final IMPORTERS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "ImportActivity"

.field public static final WIPE_DATA:Ljava/lang/String; = "wipe data"


# instance fields
.field private mFileAdapter:Lcom/evancharlton/mileage/ImportActivity$FileAdapter;

.field private mFileLoader:Lcom/evancharlton/mileage/ImportActivity$FileLoader;

.field private mFileTypes:Landroid/widget/Spinner;

.field private mInputFile:Landroid/widget/Spinner;

.field private mSubmitButton:Landroid/widget/Button;

.field private mWipeData:Landroid/widget/CheckBox;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, ".db"

    aput-object v1, v0, v2

    const-string v1, ".csv"

    aput-object v1, v0, v3

    sput-object v0, Lcom/evancharlton/mileage/ImportActivity;->FILE_TYPES:[Ljava/lang/String;

    .line 46
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    aput-object v1, v0, v2

    const-class v1, Lcom/evancharlton/mileage/io/CsvColumnMappingActivity;

    aput-object v1, v0, v3

    sput-object v0, Lcom/evancharlton/mileage/ImportActivity;->IMPORTERS:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 177
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/Class;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/evancharlton/mileage/ImportActivity;->IMPORTERS:[Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$100(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ImportActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileTypes:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$200(Lcom/evancharlton/mileage/ImportActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ImportActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/evancharlton/mileage/ImportActivity;->getFilename()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/evancharlton/mileage/ImportActivity;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ImportActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mWipeData:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/evancharlton/mileage/ImportActivity;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ImportActivity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileLoader:Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    return-object v0
.end method

.method static synthetic access$402(Lcom/evancharlton/mileage/ImportActivity;Lcom/evancharlton/mileage/ImportActivity$FileLoader;)Lcom/evancharlton/mileage/ImportActivity$FileLoader;
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/ImportActivity;
    .param p1, "x1"    # Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileLoader:Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    return-object p1
.end method

.method static synthetic access$600()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/evancharlton/mileage/ImportActivity;->FILE_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/evancharlton/mileage/ImportActivity;)Ljava/io/FilenameFilter;
    .locals 1
    .param p0, "x0"    # Lcom/evancharlton/mileage/ImportActivity;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/evancharlton/mileage/ImportActivity;->getFilter()Ljava/io/FilenameFilter;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/evancharlton/mileage/ImportActivity;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/evancharlton/mileage/ImportActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/ImportActivity;->setFiles([Ljava/lang/String;)V

    return-void
.end method

.method private getFilename()Ljava/lang/String;
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileAdapter:Lcom/evancharlton/mileage/ImportActivity$FileAdapter;

    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity;->mInputFile:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilter()Ljava/io/FilenameFilter;
    .locals 1

    .prologue
    .line 132
    new-instance v0, Lcom/evancharlton/mileage/ImportActivity$4;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/ImportActivity$4;-><init>(Lcom/evancharlton/mileage/ImportActivity;)V

    return-object v0
.end method

.method private setFiles([Ljava/lang/String;)V
    .locals 3
    .param p1, "filenames"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 142
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileAdapter:Lcom/evancharlton/mileage/ImportActivity$FileAdapter;

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->setData([Ljava/lang/String;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileLoader:Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    .line 144
    iget-object v2, p0, Lcom/evancharlton/mileage/ImportActivity;->mSubmitButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileAdapter:Lcom/evancharlton/mileage/ImportActivity$FileAdapter;

    invoke-virtual {v0}, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    array-length v0, p1

    if-nez v0, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/ImportActivity;->showDialog(I)V

    .line 149
    :cond_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ImportActivity;->setContentView(I)V

    .line 68
    new-instance v0, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/ImportActivity$FileAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileAdapter:Lcom/evancharlton/mileage/ImportActivity$FileAdapter;

    .line 70
    const v0, 0x7f09002b

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileTypes:Landroid/widget/Spinner;

    .line 71
    const v0, 0x7f09002c

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mInputFile:Landroid/widget/Spinner;

    .line 72
    const v0, 0x7f09002d

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mWipeData:Landroid/widget/CheckBox;

    .line 73
    const v0, 0x7f090011

    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/ImportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mSubmitButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mSubmitButton:Landroid/widget/Button;

    new-instance v1, Lcom/evancharlton/mileage/ImportActivity$1;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ImportActivity$1;-><init>(Lcom/evancharlton/mileage/ImportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mInputFile:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileAdapter:Lcom/evancharlton/mileage/ImportActivity$FileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 89
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ImportActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    iput-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileLoader:Lcom/evancharlton/mileage/ImportActivity$FileLoader;

    .line 91
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity;->mFileTypes:Landroid/widget/Spinner;

    new-instance v1, Lcom/evancharlton/mileage/ImportActivity$2;

    invoke-direct {v1, p0}, Lcom/evancharlton/mileage/ImportActivity$2;-><init>(Lcom/evancharlton/mileage/ImportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 110
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 114
    packed-switch p1, :pswitch_data_0

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 116
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070034

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070035

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/evancharlton/mileage/ImportActivity$3;

    invoke-direct {v2, p0, p1}, Lcom/evancharlton/mileage/ImportActivity$3;-><init>(Lcom/evancharlton/mileage/ImportActivity;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
