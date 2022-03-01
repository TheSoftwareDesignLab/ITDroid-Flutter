.class public Lcom/evancharlton/mileage/views/DividerView;
.super Landroid/widget/TextView;
.source "DividerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/evancharlton/mileage/views/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/evancharlton/mileage/views/DividerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    const v1, 0x1010208

    invoke-direct {p0, p1, p2, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/views/DividerView;->setGravity(I)V

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 23
    .local v0, "color":I
    invoke-virtual {p0, v0}, Lcom/evancharlton/mileage/views/DividerView;->setTextColor(I)V

    .line 24
    const v1, 0x1020014

    invoke-virtual {p0, v1}, Lcom/evancharlton/mileage/views/DividerView;->setId(I)V

    .line 25
    return-void
.end method
