class c_756_1;
    integer i = 756;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       ((tr_input_port[15:13]) == i);
    }
endclass

program p_756_1;
    c_756_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111xx1z1110xz0xxzzx101xxxz1zxzxxxxxzxzzxzxzxzxxxzxzxxxzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
