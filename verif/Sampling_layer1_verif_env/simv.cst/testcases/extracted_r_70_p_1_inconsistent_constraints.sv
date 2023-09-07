class c_70_1;
    integer i = -10;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_70_1;
    c_70_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1111zx1xzz00xxz10x00zzxx11xx0z0xxxzxzzxzzxzzzxzxxxxzzxzzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
