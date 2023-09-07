class c_1246_1;
    integer i = -206;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1246_1;
    c_1246_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xz1z00x110zxzx10010z1z001z0z10xxzzxxxzzxzzzzxzxzzzxzxxxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
