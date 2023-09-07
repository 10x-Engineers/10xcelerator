class c_989_1;
    integer i = -163;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_989_1;
    c_989_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xzz1110011z1z101z0xxx1x101z1zzzzzxxzzzxzzxxxzzxxzzxxzxxxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
