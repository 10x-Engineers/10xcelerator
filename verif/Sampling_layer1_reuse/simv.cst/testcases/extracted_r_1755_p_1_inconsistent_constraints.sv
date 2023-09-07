class c_1755_1;
    integer i = -291;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1755_1;
    c_1755_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001z00x0z01zxxzz0010x11xx0x1010zzzzzxxzzzxzzzxxzzzxzxzzxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
