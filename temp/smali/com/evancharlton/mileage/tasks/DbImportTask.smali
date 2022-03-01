.class public Lcom/evancharlton/mileage/tasks/DbImportTask;
.super Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;
.source "DbImportTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/evancharlton/mileage/tasks/AttachableAsyncTask",
        "<",
        "Lcom/evancharlton/mileage/io/DbImportActivity;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DbImportTask"

.field private static final TEMP_FILE:Ljava/lang/String;


# instance fields
.field private final mInput:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".import.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "input"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/AttachableAsyncTask;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/evancharlton/mileage/tasks/DbImportTask;->mInput:Ljava/lang/String;

    .line 29
    return-void
.end method

.method private cleanUp()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    const-string v2, "mileage.db"

    invoke-virtual {v1, v2}, Lcom/evancharlton/mileage/io/DbImportActivity;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 83
    .local v8, "database":Ljava/io/File;
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 84
    .local v0, "input":Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 85
    .local v5, "output":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v6

    .line 86
    .local v6, "bytes":J
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 87
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 88
    const-string v1, "DbImportTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    new-instance v9, Ljava/io/File;

    sget-object v1, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-direct {v9, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v9, "tempDatabase":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 94
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    invoke-virtual {v1}, Lcom/evancharlton/mileage/io/DbImportActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/evancharlton/mileage/provider/FillUpsProvider;->BASE_URI:Landroid/net/Uri;

    const-string v3, "reset"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 96
    return-void
.end method

.method private makeBackup()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/evancharlton/mileage/tasks/DbImportTask;->mInput:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 67
    .local v0, "input":Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 68
    .local v5, "output":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 69
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 70
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V

    .line 71
    return-void
.end method

.method private upgradeDatabase()V
    .locals 4

    .prologue
    .line 74
    const-string v1, "DbImportTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Upgrading "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v1, Lcom/evancharlton/mileage/tasks/DbImportTask;->TEMP_FILE:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 77
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {v0}, Lcom/evancharlton/mileage/provider/DatabaseUpgrader;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 78
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 79
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f07012e

    invoke-virtual {v1, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 40
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->makeBackup()V

    .line 41
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f07012f

    invoke-virtual {v1, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 42
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f070130

    invoke-virtual {v1, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 43
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->upgradeDatabase()V

    .line 44
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f070131

    invoke-virtual {v1, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 45
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f070132

    invoke-virtual {v1, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 46
    invoke-direct {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->cleanUp()V

    .line 47
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/evancharlton/mileage/io/DbImportActivity;

    const v4, 0x7f07012d

    invoke-virtual {v1, v4}, Lcom/evancharlton/mileage/io/DbImportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 48
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 52
    :goto_0
    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/io/IOException;
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->publishProgress([Ljava/lang/Object;)V

    .line 52
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/DbImportActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/DbImportActivity;->setWorking(Z)V

    .line 63
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, Ljava/lang/Boolean;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/DbImportActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/DbImportActivity;->setWorking(Z)V

    .line 34
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 20
    check-cast p1, [Ljava/lang/String;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/evancharlton/mileage/tasks/DbImportTask;->onProgressUpdate([Ljava/lang/String;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/String;)V
    .locals 2
    .param p1, "updates"    # [Ljava/lang/String;

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/evancharlton/mileage/tasks/DbImportTask;->getParent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/evancharlton/mileage/io/DbImportActivity;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-virtual {v0, v1}, Lcom/evancharlton/mileage/io/DbImportActivity;->log(Ljava/lang/String;)V

    .line 58
    return-void
.end method
