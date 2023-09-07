class c_2984_1;
    integer i = -496;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2984_1;
    c_2984_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1101z11zxz100xx0zzx111x1100zxxxxzzxxxxxzzxzxxzxzzxxzzzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
