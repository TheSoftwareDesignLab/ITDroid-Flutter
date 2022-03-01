.class Lcom/evancharlton/mileage/ImportActivity$FileLoader;
.super Landroid/os/AsyncTask;
.source "ImportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/ImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FileLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mActivity:Lcom/evancharlton/mileage/ImportActivity;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evancharlton/mileage/ImportActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evancharlton/mileage/ImportActivity$1;

    .prologue
    .line 155
    invoke-direct {p0}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public attach(Lcom/evancharlton/mileage/ImportActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/evancharlton/mileage/ImportActivity;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->mActivity:Lcom/evancharlton/mileage/ImportActivity;

    .line 160
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->doInBackground([Ljava/lang/Void;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Ljava/lang/String;
    .locals 2
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->mActivity:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v1}, Lcom/evancharlton/mileage/ImportActivity;->access$700(Lcom/evancharlton/mileage/ImportActivity;)Ljava/io/FilenameFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 155
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->onPostExecute([Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute([Ljava/lang/String;)V
    .locals 2
    .param p1, "files"    # [Ljava/lang/String;

    .prologue
    .line 169
    if-nez p1, :cond_0

    .line 170
    const-string v0, "ImportActivity"

    const-string v1, "No files found!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/String;

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/ImportActivity$FileLoader;->mActivity:Lcom/evancharlton/mileage/ImportActivity;

    invoke-static {v0, p1}, Lcom/evancharlton/mileage/ImportActivity;->access$800(Lcom/evancharlton/mileage/ImportActivity;[Ljava/lang/String;)V

    .line 174
    return-void
.end method
