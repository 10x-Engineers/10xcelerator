class c_823_1;
    integer i = -136;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_823_1;
    c_823_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010101xzxzxzzzzx1x1x1x1xxx01x1x0zzxzxzxxxzzxxxxxxxxxxxxxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
