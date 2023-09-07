class c_633_1;
    integer i = -104;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_633_1;
    c_633_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xx1z1zz1zzz1111z1zz1z11x11z1zxzxxzxxzxxxxzzxzzzzxzzxxxxzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
