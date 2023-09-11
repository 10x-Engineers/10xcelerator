class c_541_1;
    integer i = -89;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_541_1;
    c_541_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz010xzxx01011111zx01zz1x1xxz1zzzxzxzxzzzzxxxxzzxzzzxzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
