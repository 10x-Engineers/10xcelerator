class c_286_1;
    integer i = 286;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_286_1;
    c_286_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1zz100xxz10z1zxz10x1zxx001xx0zxxzzzzxzxxxzxxxxxzzxzxzzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
