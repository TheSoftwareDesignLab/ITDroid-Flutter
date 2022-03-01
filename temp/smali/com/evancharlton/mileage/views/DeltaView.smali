.class public abstract Lcom/evancharlton/mileage/views/DeltaView;
.super Landroid/widget/LinearLayout;
.source "DeltaView.java"


# instance fields
.field private mUnits:Landroid/widget/Spinner;

.field private mValue:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v6, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    invoke-super {p0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 26
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 29
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f030003

    invoke-virtual {v2, v3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 31
    const v3, 0x7f090007

    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/views/DeltaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, p0, Lcom/evancharlton/mileage/views/DeltaView;->mValue:Landroid/widget/EditText;

    .line 32
    const v3, 0x7f090008

    invoke-virtual {p0, v3}, Lcom/evancharlton/mileage/views/DeltaView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    iput-object v3, p0, Lcom/evancharlton/mileage/views/DeltaView;->mUnits:Landroid/widget/Spinner;

    .line 34
    sget-object v3, Lcom/evancharlton/mileage/R$styleable;->DeltaView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 35
    .local v1, "arr":Landroid/content/res/TypedArray;
    iget-object v3, p0, Lcom/evancharlton/mileage/views/DeltaView;->mValue:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 37
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008

    const v4, 0x1020014

    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/DeltaView;->getTexts()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, p1, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 40
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v3, 0x1090009

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 41
    iget-object v3, p0, Lcom/evancharlton/mileage/views/DeltaView;->mUnits:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 42
    return-void
.end method


# virtual methods
.method public final getDelta()J
    .locals 4

    .prologue
    .line 62
    iget-object v2, p0, Lcom/evancharlton/mileage/views/DeltaView;->mValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 63
    iget-object v2, p0, Lcom/evancharlton/mileage/views/DeltaView;->mValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 64
    .local v0, "value":J
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/DeltaView;->getValues()[J

    move-result-object v2

    iget-object v3, p0, Lcom/evancharlton/mileage/views/DeltaView;->mUnits:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    aget-wide v2, v2, v3

    mul-long/2addr v2, v0

    .line 66
    .end local v0    # "value":J
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public final getEditField()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/evancharlton/mileage/views/DeltaView;->mValue:Landroid/widget/EditText;

    return-object v0
.end method

.method protected abstract getPosition(J)I
.end method

.method protected abstract getTexts()[Ljava/lang/String;
.end method

.method protected abstract getValues()[J
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 55
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 56
    .local v0, "saved":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 57
    iget-object v1, p0, Lcom/evancharlton/mileage/views/DeltaView;->mValue:Landroid/widget/EditText;

    const-string v2, "value"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v1, p0, Lcom/evancharlton/mileage/views/DeltaView;->mUnits:Landroid/widget/Spinner;

    const-string v2, "units"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 59
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 47
    .local v0, "icicle":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 48
    const-string v1, "value"

    iget-object v2, p0, Lcom/evancharlton/mileage/views/DeltaView;->mValue:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "units"

    iget-object v2, p0, Lcom/evancharlton/mileage/views/DeltaView;->mUnits:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    return-object v0
.end method

.method public final setDelta(J)V
    .locals 6
    .param p1, "delta"    # J

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/evancharlton/mileage/views/DeltaView;->getPosition(J)I

    move-result v2

    .line 71
    .local v2, "position":I
    invoke-virtual {p0}, Lcom/evancharlton/mileage/views/DeltaView;->getValues()[J

    move-result-object v3

    aget-wide v0, v3, v2

    .line 72
    .local v0, "multiplier":J
    iget-object v3, p0, Lcom/evancharlton/mileage/views/DeltaView;->mValue:Landroid/widget/EditText;

    div-long v4, p1, v0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v3, p0, Lcom/evancharlton/mileage/views/DeltaView;->mUnits:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 74
    return-void
.end method
