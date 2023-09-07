class c_1472_1;
    integer i = -244;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1472_1;
    c_1472_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011xz00xzz1101x0z10zxz001xx1x0xxzzxzxzzxzzzzxxxzxzxzzxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
