class c_1861_1;
    integer i = -309;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1861_1;
    c_1861_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xx1zx0z000zx1xxxx0z01zxx11z1zxzxzxzzzxxzzxzxxxxzxxzzxxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
