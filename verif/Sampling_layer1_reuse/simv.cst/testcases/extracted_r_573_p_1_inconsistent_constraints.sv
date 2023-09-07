class c_573_1;
    integer i = -94;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_573_1;
    c_573_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx01111z1z10x1100x00x00z0zz1xx1xxxxxxzzxzxzzzxzxzzzzzzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
