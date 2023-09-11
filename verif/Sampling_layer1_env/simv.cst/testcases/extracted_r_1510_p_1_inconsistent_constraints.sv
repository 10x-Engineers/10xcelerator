class c_1510_1;
    integer i = -250;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1510_1;
    c_1510_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx101zxxxz0z10z0x1zzxzz00xxx10zxzxzxxxxxxzzzzzzzzzzzxxzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
