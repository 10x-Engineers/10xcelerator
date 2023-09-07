class c_480_1;
    integer i = -478;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_480_1;
    c_480_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx111101x001z10z111z0zx1z0010xzxxxxxxxxzxzxzxxzzxxzzzxzxzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
