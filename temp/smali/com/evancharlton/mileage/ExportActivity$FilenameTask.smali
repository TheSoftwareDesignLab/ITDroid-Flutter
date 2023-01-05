.class public final Lcom/evancharlton/mileage/ExportActivity$FilenameTask;
.super Landroid/os/AsyncTask;
.source "ExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/ExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "FilenameTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final BASE_NAME:Ljava/lang/String; = "mileage-export"

.field private static final TAG:Ljava/lang/String; = "FilenameTask"


# instance fields
.field private mActivity:Lcom/evancharlton/mileage/ExportActivity;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 109
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getAbsoluteFilename(I)Ljava/lang/String;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->getBasename(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->mActivity:Lcom/evancharlton/mileage/ExportActivity;

    invoke-static {v1}, Lcom/evancharlton/mileage/ExportActivity;->access$300(Lcom/evancharlton/mileage/ExportActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBasename(I)Ljava/lang/String;
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mileage-export"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-lez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method


# virtual methods
.method public attach(Lcom/evancharlton/mileage/ExportActivity;)V
    .locals 0
    .param p1, "activity"    # Lcom/evancharlton/mileage/ExportActivity;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->mActivity:Lcom/evancharlton/mileage/ExportActivity;

    .line 118
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 123
    new-instance v1, Ljava/io/File;

    sget-object v3, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 124
    .local v1, "destDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 125
    const-string v3, "FilenameTask"

    const-string v4, "Creating export destination"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 129
    :cond_0
    const/4 v2, 0x0

    .line 131
    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    const/4 v3, 0x0

    .line 136
    :goto_1
    return-object v3

    .line 134
    :cond_1
    invoke-direct {p0, v2}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->getAbsoluteFilename(I)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "abs":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    .line 136
    invoke-direct {p0, v2}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->getBasename(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 138
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 139
    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 109
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 152
    if-nez p1, :cond_0

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/evancharlton/mileage/ExportActivity$FilenameTask;->mActivity:Lcom/evancharlton/mileage/ExportActivity;

    invoke-static {v0}, Lcom/evancharlton/mileage/ExportActivity;->access$600(Lcom/evancharlton/mileage/ExportActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
