class c_1578_1;
    integer i = -261;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1578_1;
    c_1578_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z1x1zxxzx10010xz11z11x011zzxzxxxxxxxzzxzzxxxxzzzzzzzzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
