class c_1587_1;
    integer i = -263;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1587_1;
    c_1587_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000zzzz1z1100x1xx110000x1zzzzzzzzxxxzzzxxxzxxxxxxxxzxzzzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
