.class public final Lcom/evancharlton/mileage/io/BaseExportActivity$Update;
.super Ljava/lang/Object;
.source "BaseExportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/io/BaseExportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Update"
.end annotation


# instance fields
.field public final max:I

.field public final message:Ljava/lang/String;

.field public final progress:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "progress"    # I

    .prologue
    .line 128
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;II)V

    .line 129
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "progress"    # I
    .param p2, "max"    # I

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;II)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "progress"    # I

    .prologue
    .line 120
    const/16 v0, 0x64

    invoke-direct {p0, p1, p2, v0}, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;-><init>(Ljava/lang/String;II)V

    .line 121
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "progress"    # I
    .param p3, "max"    # I

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->message:Ljava/lang/String;

    .line 133
    iput p2, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->progress:I

    .line 134
    iput p3, p0, Lcom/evancharlton/mileage/io/BaseExportActivity$Update;->max:I

    .line 135
    return-void
.end method
