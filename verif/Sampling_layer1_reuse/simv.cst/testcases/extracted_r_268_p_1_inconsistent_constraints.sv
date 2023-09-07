class c_268_1;
    integer i = -43;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_268_1;
    c_268_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz00xxzzzzx11x0xxzxz1zz1z11zx10xxxzzxxzzxxxzzxxzzxzzzxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
