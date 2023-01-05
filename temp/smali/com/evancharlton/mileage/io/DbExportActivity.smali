.class public Lcom/evancharlton/mileage/io/DbExportActivity;
.super Lcom/evancharlton/mileage/io/BaseExportActivity;
.source "DbExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/io/DbExportActivity$1;,
        Lcom/evancharlton/mileage/io/DbExportActivity$DbExportTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity;-><init>()V

    .line 15
    return-void
.end method


# virtual methods
.method protected createExportTask()Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/evancharlton/mileage/io/DbExportActivity$DbExportTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/io/DbExportActivity$DbExportTask;-><init>(Lcom/evancharlton/mileage/io/DbExportActivity$1;)V

    return-object v0
.end method
