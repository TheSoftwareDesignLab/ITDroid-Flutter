.class Lcom/evancharlton/mileage/FillupInfoActivity$Overrider$RealOverrider;
.super Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;
.source "FillupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RealOverrider"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;-><init>(Landroid/app/Activity;)V

    .line 213
    return-void
.end method


# virtual methods
.method public overridePendingTransition(II)V
    .locals 1
    .param p1, "in"    # I
    .param p2, "out"    # I

    .prologue
    .line 217
    iget-object v0, p0, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider$RealOverrider;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 218
    return-void
.end method
