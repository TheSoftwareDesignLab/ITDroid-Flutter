.class final Lcom/evancharlton/mileage/FillupInfoActivity$PartialStatistic;
.super Lcom/evancharlton/mileage/provider/Statistic;
.source "FillupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/FillupInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PartialStatistic"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "label"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/provider/Statistic;-><init>(I)V

    .line 185
    return-void
.end method


# virtual methods
.method public format(Landroid/content/Context;Lcom/evancharlton/mileage/dao/Vehicle;D)Ljava/lang/String;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicle"    # Lcom/evancharlton/mileage/dao/Vehicle;
    .param p3, "value"    # D

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 189
    const-string v2, "%b"

    new-array v3, v0, [Ljava/lang/Object;

    const-wide/16 v4, 0x0

    cmpl-double v4, p3, v4

    if-lez v4, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method
