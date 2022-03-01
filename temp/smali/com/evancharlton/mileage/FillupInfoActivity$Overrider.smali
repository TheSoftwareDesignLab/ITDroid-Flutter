.class Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;
.super Ljava/lang/Object;
.source "FillupInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/evancharlton/mileage/FillupInfoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Overrider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/evancharlton/mileage/FillupInfoActivity$Overrider$RealOverrider;
    }
.end annotation


# instance fields
.field protected final mActivity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 204
    iput-object p1, p0, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;->mActivity:Landroid/app/Activity;

    .line 205
    return-void
.end method

.method public static get(Landroid/app/Activity;)Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 195
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    .line 196
    new-instance v0, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider$RealOverrider;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider$RealOverrider;-><init>(Landroid/app/Activity;)V

    .line 198
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;

    invoke-direct {v0, p0}, Lcom/evancharlton/mileage/FillupInfoActivity$Overrider;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public overridePendingTransition(II)V
    .locals 0
    .param p1, "in"    # I
    .param p2, "out"    # I

    .prologue
    .line 208
    return-void
.end method
