class c_491_1;
    integer i = -80;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_491_1;
    c_491_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x011z0z0x1zx1x1111z00xzz11z1zzzxxxxzzxzzxxxzzzxzzxxxxzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
