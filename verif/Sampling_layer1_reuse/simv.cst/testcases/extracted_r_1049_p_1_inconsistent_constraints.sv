class c_1049_1;
    integer i = -173;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1049_1;
    c_1049_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1z0x1x1101101z00xx0z0z10z011x1xzzxxxzzxxxzxzzzzzxxxzzzxzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
