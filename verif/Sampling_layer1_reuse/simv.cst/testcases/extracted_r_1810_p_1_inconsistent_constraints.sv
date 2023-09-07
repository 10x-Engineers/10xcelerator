class c_1810_1;
    integer i = -300;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1810_1;
    c_1810_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00zzx10x11011zzzx0zz0z1xx11xxxxzxxzzzxzzzxxxxzzzzxzzzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
