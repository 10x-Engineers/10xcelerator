class c_148_1;
    integer i = -23;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_148_1;
    c_148_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x0zzxx10x10011x1zxx101z1zxxzzzxxzzzxxxxxzzzzzxzzzzzzzxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
