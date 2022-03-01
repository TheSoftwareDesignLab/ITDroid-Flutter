.class public Lcom/evancharlton/mileage/services/AutomaticBackupService;
.super Landroid/app/IntentService;
.source "AutomaticBackupService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;
    }
.end annotation


# static fields
.field private static final MIN_DELTA:J = 0x3e8L

.field private static final TAG:Ljava/lang/String; = "Mileage.ABS"

.field private static mLastBackupTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/evancharlton/mileage/services/AutomaticBackupService;->mLastBackupTime:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/evancharlton/mileage/services/AutomaticBackupService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method private error(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 91
    const-string v0, "Mileage.ABS"

    const-string v1, "Backup failed!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 92
    invoke-static {p0}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->get(Landroid/content/Context;)Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->wtf(Ljava/lang/Exception;)V

    .line 93
    return-void
.end method

.method public static run(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/evancharlton/mileage/services/AutomaticBackupService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 30
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/evancharlton/mileage/services/AutomaticBackupService;->mLastBackupTime:J

    sub-long v6, v2, v4

    .line 41
    .local v6, "delta":J
    const-wide/16 v2, 0x3e8

    cmp-long v2, v6, v2

    if-gez v2, :cond_1

    .line 42
    const-string v2, "Mileage.ABS"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not backing up; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/evancharlton/mileage/services/AutomaticBackupService;->mLastBackupTime:J

    .line 47
    const-string v2, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    const-string v2, "mileage.db"

    invoke-virtual {p0, v2}, Lcom/evancharlton/mileage/services/AutomaticBackupService;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 49
    .local v11, "src":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-static {}, Lcom/evancharlton/mileage/util/Util;->getExternalFolder()Ljava/io/File;

    move-result-object v2

    const-string v3, "mileage-backup.db"

    invoke-direct {v8, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    .local v8, "dest":Ljava/io/File;
    const/4 v1, 0x0

    .line 52
    .local v1, "source":Ljava/nio/channels/FileChannel;
    const/4 v0, 0x0

    .line 55
    .local v0, "destination":Ljava/nio/channels/FileChannel;
    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 56
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 57
    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_2
    invoke-virtual {v8}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_3

    .line 60
    invoke-static {p0}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->get(Landroid/content/Context;)Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;

    move-result-object v2

    const-string v3, "Unable to create file!"

    invoke-virtual {v2, v3}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->wtf(Ljava/lang/String;)V

    .line 63
    :cond_3
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    .line 64
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 65
    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    .line 66
    const-string v2, "Mileage.ABS"

    const-string v3, "Finished backup"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    if-eqz v1, :cond_4

    .line 74
    :try_start_1
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 79
    :cond_4
    :goto_1
    if-eqz v0, :cond_0

    .line 81
    :try_start_2
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v2

    goto :goto_0

    .line 67
    :catch_1
    move-exception v10

    .line 68
    .local v10, "fnfe":Ljava/io/FileNotFoundException;
    :try_start_3
    invoke-direct {p0, v10}, Lcom/evancharlton/mileage/services/AutomaticBackupService;->error(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 72
    if-eqz v1, :cond_5

    .line 74
    :try_start_4
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 79
    :cond_5
    :goto_2
    if-eqz v0, :cond_0

    .line 81
    :try_start_5
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 82
    :catch_2
    move-exception v2

    goto/16 :goto_0

    .line 69
    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v9

    .line 70
    .local v9, "e":Ljava/io/IOException;
    :try_start_6
    invoke-direct {p0, v9}, Lcom/evancharlton/mileage/services/AutomaticBackupService;->error(Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 72
    if-eqz v1, :cond_6

    .line 74
    :try_start_7
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_7

    .line 79
    :cond_6
    :goto_3
    if-eqz v0, :cond_0

    .line 81
    :try_start_8
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 82
    :catch_4
    move-exception v2

    goto/16 :goto_0

    .line 72
    .end local v9    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_7

    .line 74
    :try_start_9
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 79
    :cond_7
    :goto_4
    if-eqz v0, :cond_8

    .line 81
    :try_start_a
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    .line 84
    :cond_8
    :goto_5
    throw v2

    .line 75
    :catch_5
    move-exception v2

    goto :goto_1

    .restart local v10    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v2

    goto :goto_2

    .end local v10    # "fnfe":Ljava/io/FileNotFoundException;
    .restart local v9    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v2

    goto :goto_3

    .end local v9    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v3

    goto :goto_4

    .line 82
    :catch_9
    move-exception v3

    goto :goto_5
.end method
