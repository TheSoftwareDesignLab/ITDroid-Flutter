.class final Lcom/evancharlton/mileage/io/DbExportActivity$DbExportTask;
.super Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
.source "DbExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/io/DbExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DbExportTask"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/evancharlton/mileage/io/DbExportActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/evancharlton/mileage/io/DbExportActivity$1;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/DbExportActivity$DbExportTask;-><init>()V

    return-void
.end method


# virtual methods
.method public performExport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "inputFile"    # Ljava/lang/String;
    .param p2, "outputFile"    # Ljava/lang/String;

    .prologue
    .line 19
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 20
    .local v0, "input":Ljava/nio/channels/FileChannel;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 21
    .local v5, "output":Ljava/nio/channels/FileChannel;
    const-wide/16 v1, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    .line 22
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 23
    invoke-virtual {v5}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .end local v0    # "input":Ljava/nio/channels/FileChannel;
    .end local v5    # "output":Ljava/nio/channels/FileChannel;
    .end local p2    # "outputFile":Ljava/lang/String;
    :goto_0
    return-object p2

    .line 25
    .restart local p2    # "outputFile":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 27
    const/4 p2, 0x0

    goto :goto_0
.end method
