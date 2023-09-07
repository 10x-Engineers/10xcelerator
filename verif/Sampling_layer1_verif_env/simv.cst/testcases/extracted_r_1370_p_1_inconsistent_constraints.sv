class c_1370_1;
    integer i = -227;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1370_1;
    c_1370_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110xz0z11z0x01x00xxz1x0z1101011xxzxxzzzzxzzzzxxxxzzzzzzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
