class c_1974_1;
    integer i = -327;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1974_1;
    c_1974_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z1x0z0z00z01111xxx1zzzzx10z0zzxxxxxzzxxxxxxxxzzxxxzzzxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
