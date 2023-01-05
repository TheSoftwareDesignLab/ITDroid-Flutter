.class final Lcom/evancharlton/mileage/FillupInfoActivity$Holder;
.super Ljava/lang/Object;
.source "FillupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/FillupInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# instance fields
.field public final statistic:Lcom/evancharlton/mileage/provider/Statistic;

.field public final view:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/evancharlton/mileage/provider/Statistic;)V
    .locals 0
    .param p1, "view"    # Landroid/view/ViewGroup;
    .param p2, "statistic"    # Lcom/evancharlton/mileage/provider/Statistic;

    .prologue
    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;->view:Landroid/view/ViewGroup;

    .line 178
    iput-object p2, p0, Lcom/evancharlton/mileage/FillupInfoActivity$Holder;->statistic:Lcom/evancharlton/mileage/provider/Statistic;

    .line 179
    return-void
.end method
