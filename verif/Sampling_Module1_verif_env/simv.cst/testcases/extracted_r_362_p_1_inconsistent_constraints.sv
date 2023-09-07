class c_362_1;
    integer i = 362;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_362_1;
    c_362_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000z101z0z1zz0zzz1z101zz11xxxxxzxzzzxxzxxzzzxxzzxzzxzzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
