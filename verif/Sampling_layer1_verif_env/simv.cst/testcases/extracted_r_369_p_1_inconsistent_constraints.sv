class c_369_1;
    integer i = -60;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_369_1;
    c_369_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0zz00xx01x1z1x00xxz0101111x11xzxzzxxzxzxxxxzzxzxxxxzzzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
