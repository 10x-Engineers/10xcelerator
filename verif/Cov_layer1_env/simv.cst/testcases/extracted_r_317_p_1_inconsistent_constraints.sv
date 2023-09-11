class c_317_1;
    integer i = -315;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_317_1;
    c_317_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx101z1zz00zxz010x0zxz1xx0001xxxzxzxxxzxxzzzxxxxxzzzzxxxxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
