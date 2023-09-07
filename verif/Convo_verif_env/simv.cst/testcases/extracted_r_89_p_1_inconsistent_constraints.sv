class c_89_1;
    integer i = 89;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_89_1;
    c_89_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z1x00xxzz0z0xxxzxx1z01100zx0zzzzxzxxzxzzxzxzzzzzxzzzxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
