.class public final Lcom/evancharlton/mileage/provider/Settings;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/provider/Settings$DataFormats;
    }
.end annotation


# static fields
.field public static final AUTO_BACKUPS:Ljava/lang/String; = "auto_backup"

.field public static final DATA_FORMAT:Ljava/lang/String; = "data_format"

.field public static final EXTERNAL_DIR:Ljava/lang/String;

.field public static final META_FIELD:Ljava/lang/String; = "meta_field"

.field public static final NAME:Ljava/lang/String; = "com.evancharlton.mileage_preferences"

.field public static final NOTIFICATIONS_ENABLED:Ljava/lang/String; = "interval_notification_enabled"

.field public static final NOTIFICATIONS_LED:Ljava/lang/String; = "interval_notification_led"

.field public static final NOTIFICATIONS_RINGTONE:Ljava/lang/String; = "interval_notification_ringtone"

.field public static final NOTIFICATIONS_VIBRATE:Ljava/lang/String; = "interval_notification_vibrate"

.field public static final STORE_LOCATION:Ljava/lang/String; = "location_data"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mileage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/evancharlton/mileage/provider/Settings;->EXTERNAL_DIR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method
