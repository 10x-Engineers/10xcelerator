class c_1215_1;
    integer i = -201;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1215_1;
    c_1215_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzxx00x11z1xx00x011z011xzzz1xzzxzzzzzzzxxzzxxzzxxzxxzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
