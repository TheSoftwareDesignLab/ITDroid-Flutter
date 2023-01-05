.class public Lcom/evancharlton/mileage/io/CsvExportActivity;
.super Lcom/evancharlton/mileage/io/BaseExportActivity;
.source "CsvExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/io/CsvExportActivity$1;,
        Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/evancharlton/mileage/io/BaseExportActivity;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method protected createExportTask()Lcom/evancharlton/mileage/io/BaseExportActivity$ExportTask;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/evancharlton/mileage/io/CsvExportActivity$CsvExportTask;-><init>(Lcom/evancharlton/mileage/io/CsvExportActivity$1;)V

    return-object v0
.end method
