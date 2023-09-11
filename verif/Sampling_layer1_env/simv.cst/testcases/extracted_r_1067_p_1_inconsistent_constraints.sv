class c_1067_1;
    integer i = -176;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1067_1;
    c_1067_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1zxz1zxxx010z01xz1zzxx101xxz0zzxzzxzzxxxzxxxxxzzzzxzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
