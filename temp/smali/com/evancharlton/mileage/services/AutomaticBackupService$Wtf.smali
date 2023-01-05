.class Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;
.super Ljava/lang/Object;
.source "AutomaticBackupService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/services/AutomaticBackupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Wtf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf$RealWtf;
    }
.end annotation


# instance fields
.field protected final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;->mContext:Landroid/content/Context;

    .line 107
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_0

    .line 98
    new-instance v0, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf$RealWtf;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf$RealWtf;-><init>(Landroid/content/Context;)V

    .line 100
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/services/AutomaticBackupService$Wtf;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public wtf(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 110
    const-string v0, "Mileage.ABS"

    const-string v1, "WTF!"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    return-void
.end method

.method public wtf(Ljava/lang/String;)V
    .locals 3
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 114
    const-string v0, "Mileage.ABS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WTF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    return-void
.end method
